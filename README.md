# NiceMe

So if you use your company's computer, usually there are many processes running for security reasons, eating up lots of CPU and memeory resource. Since you can not shut them
down, NiceMe allow you to scan the PID of all those applciations, and request OS to set them into lowest priority.

I have another application can be run with this one: it will create a constent fake process running at the second lowest priority(18), and it will automatically kick off when no other application is running. So basically this will block all those security processes. But not recommended.