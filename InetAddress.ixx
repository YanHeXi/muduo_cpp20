export module InetAddress;

import <string>;
import <arpa/inet.h>;
import <netinet/in.h>;

export class InetAddress
{
public:
    explicit InetAddress(uint16_t port = 0,
                         std::string_view ip = "127.0.0.1");

    explicit InetAddress(const sockaddr_in &addr)
        : addr_(addr) {}

    std::string toIp() const;
    std::string toIpPort() const;

    uint16_t toPort() const { return ntohs(addr_.sin_port); }

    const sockaddr_in *getSockAddr() const { return &addr_; }

    void setSockAddr(const sockaddr_in &addr) { addr_ = addr; }

private:
    sockaddr_in addr_;
};
