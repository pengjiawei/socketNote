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
void socketClient(const std::string& ip,const std::string& port){
		int sock_id;
		struct sockaddr_in serv_addr;
		memset(&serv_addr, 0, sizeof(serv_addr));
		serv_addr.sin_family = AF_INET;
		serv_addr.sin_port = htons(atoi(port.c_str()));

		inet_pton(AF_INET, ip.c_str(), &serv_addr.sin_addr);

		//connect socket
		if ((sock_id = socket(AF_INET, SOCK_STREAM, 0)) < 0) {

			printf("Create socket failed %d\n", sock_id);

		}

		int reuseflag = 1;
		setsockopt(sock_id, SOL_SOCKET, SO_REUSEADDR, (const char*) &reuseflag,
				sizeof(int)); //set reused

		struct linger clsflag;
		clsflag.l_onoff = 1;
		clsflag.l_linger = 2000;
		setsockopt(sock_id, SOL_SOCKET, SO_LINGER, (const struct linger*) &clsflag,
				sizeof(struct linger)); //set closed

		int i_ret = connect(sock_id, (struct sockaddr *) &serv_addr,
				sizeof(serv_addr));

		printf("finish connect\n");
		if (i_ret == -1) {
			printf("Connect socket failed\n");
			close(sock_id);
		}
		char buf[buff_size];
		memset(buf, 0, buff_size);

	/**
	 * add your data that should be transfered
	 */
		send(sock_id, buf, sizeof(buf), 0);

		close(sock_id);
}