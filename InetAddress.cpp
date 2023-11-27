import InetAddress;

import <cstring>;
import <netinet/in.h>;
import <string>;
import <arpa/inet.h>;

InetAddress::InetAddress(uint16_t port, std::string_view ip)
{
    addr_.sin_family = AF_INET;
    addr_.sin_port = htons(port);
    inet_pton(AF_INET, ip.data(), &addr_.sin_addr);
}

std::string InetAddress::toIp() const
{
    char buf[INET_ADDRSTRLEN];
    inet_ntop(AF_INET, &addr_.sin_addr, buf, INET_ADDRSTRLEN);
    return std::string(buf);
}

std::string InetAddress::toIpPort() const
{
    char buf[INET_ADDRSTRLEN + 8];
    sprintf(buf, "%s:%u", toIp().c_str(), ntohs(addr_.sin_port));
    return std::string(buf);
}
