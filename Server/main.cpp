#include <QCoreApplication>

#include <cstdio>
#include <cstdlib>

#include <iostream>
#include <cstring>   // Do memset (niezbędne przy sockaddr_in)
#include <string>    // Do std::string
#include <thread>    // Do std::thread
#include <vector>    // Zamiast tablic dynamicznych z malloc

#include <QDebug>

#include <unistd.h>      // close(), read(), write()
#include <sys/types.h>
#include <sys/socket.h>  // socket(), bind(), listen()
#include <netinet/in.h>  // sockaddr_in
#include <arpa/inet.h>   // inet_addr()

using namespace std;

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    // Set up code that uses the Qt event loop here.
    // Call a.quit() or a.exit() to quit the application.
    // A not very useful example would be including
    // #include <QTimer>
    // near the top of the file and calling
    // QTimer::singleShot(5000, &a, &QCoreApplication::quit);
    // which quits the application after 5 seconds.

    // If you do not need a running Qt event loop, remove the call
    // to a.exec() or use the Non-Qt Plain C++ Application template.
    return a.exec();
}
