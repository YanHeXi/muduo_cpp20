
export module Logger;
import nocopyable;
import <string>;
import <iostream>;
export class Logger
{
public:
    enum LogLevel
    {
        INFO,  // 普通信息
        ERROR, // 错误信息
        FATAL, // core信息
        DEBUG  // 调试信息
    };

    static Logger &instance();
    void setLogLevel(LogLevel level);
    void log(LogLevel level, const std::string &message);

private:
    LogLevel logLevel_{INFO}; // 默认日志级别为 INFO
};