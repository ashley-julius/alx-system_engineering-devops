ALX-SOFTWARE-ENGINEERING
PROJECT TITLE: WEB SERVER

What is the main role of a web server:

The main role of a web server is to deliver web content to clients over the internet. It receives requests from clients (typically web browsers) and responds with the appropriate content.

What is a child process

A child process is a process created by another process. The creator process is properly called the "parent process".

NOTE:

A child process can start or stop without affecting the parent process.
If the parent process dies, then the child process becomes an orphan.

Why web servers usually have a parent process and child processes

1: Efficiency: The parent process is responsible for managing incoming requests and distributing them among the child processes.
By having multiple child processes, the web server can handle multiple requests simultaneously.

2: Robustness: If a child process crashes due to a programming error or some other issue, the parent process can restart the child process to ensure that the web server keeps running smoothly. This helps ensure that the web server remains available and responsive to incoming requests.

3: Security: By running each incoming request in a separate child process, the web server can isolate each request from the others. This helps prevent one user's request from interfering with another user's request or accessing sensitive data from another request.
