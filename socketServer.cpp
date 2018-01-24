#include <iostream>
#include<string.h>
#include<fcntl.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<stdlib.h>
#include<stdio.h>
#include <netinet/in.h>
#include<arpa/inet.h>
#include <unistd.h>
using namespace std;
const int buff_size = 1024;
void socketServer() {

	struct sockaddr_in server_addr;
	server_addr.sin_family = AF_INET;
	server_addr.sin_port = htons(1111);
	server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
	bzero(&(server_addr.sin_zero), 8);

	int server_sock_fd = socket(AF_INET, SOCK_STREAM, 0);
	if (server_sock_fd == -1) {
		printf("Create goal socket failure!");
	}
	//绑定socket
	int bind_result = bind(server_sock_fd, (struct sockaddr *) &server_addr,
			sizeof(server_addr));
	if (bind_result == -1) {
		printf("Set goal port failure!");
	}
	//listen
	printf("i am listening!!!!!!!!!!\n");
	if (listen(server_sock_fd, 3) == -1) {
		printf("Listen goal port error!");
	}

	fd_set server_fd_set;
	int max_fd = -1;
	struct timeval tv;
	int times = 0;
	tv.tv_sec = 5;
	tv.tv_usec = 0;

	while (true) {
//		boost::mutex::scoped_lock locker_(base_lock);
		FD_ZERO(&server_fd_set);
		FD_SET(server_sock_fd, &server_fd_set);

		int ret = select(server_sock_fd + 1, &server_fd_set, NULL, NULL, NULL);
				printf("select return = %d\n", ret);
		if (ret > 0) {
			int client_sock_fd = 0;
			bool flag = FD_ISSET(server_sock_fd, &server_fd_set);
			printf("is in the set? = %d\n", flag);
			if (flag) {
				struct sockaddr_in client_address;
				memset(&client_address, 0, sizeof(client_address));

				socklen_t address_len = sizeof(client_address);
				printf("i am accept!!!!!!!!!!\n");
				client_sock_fd = accept(server_sock_fd,
						(struct sockaddr *) &client_address, &address_len);

				printf("client_sock_fd = %d\n", client_sock_fd);
				if (client_sock_fd <= 0) {
					printf("client_sock_tf_in_controller < 0");
				}
			}

			if (client_sock_fd != 0 && flag) {

				char recvData[buff_size];
				memset(recvData, 0, buff_size);

				int byte_num = recv(client_sock_fd, recvData, sizeof(recvData),
						0);
				/**
				 * parse your data here
				 * advice : you should transfer length of data if you wanna while(recv())
				 */

				if (byte_num > 0) {
					printf("recv data length = %d\n", byte_num);
				} else if (byte_num < 0) {
					close(client_sock_fd);
					client_sock_fd = 0;
				} else {
					FD_CLR(client_sock_fd, &server_fd_set);
					client_sock_fd = 0;
				}
			}
		} else if (ret == 0) {
			FD_ZERO(&server_fd_set);
			FD_SET(server_sock_fd, &server_fd_set);
		}
	}
}
int main(){
	createSocketAndReceive();
}