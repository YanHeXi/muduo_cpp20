import Logger;
import Timestamp;

import <iostream>;

Logger &Logger::instance()
{
    static Logger logger;
    return logger;
}

void Logger::setLogLevel(LogLevel level)
{
    logLevel_ = level;
}
void Logger::log(LogLevel level, const std::string &message)
{
    if (level >= logLevel_)
    {
        std::cout << "[" << level << "] " << message << std::endl;
    }
}