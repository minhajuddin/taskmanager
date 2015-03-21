# Task Manager


Which allows users to manage tasks



User stories

  + A user should be able to create a new task
  + A user should be able to list tasks
  + A user should be able to mark a task as completed
  + A user should be able to list all incomplete tasks
  + A user should be able to list all complete tasks
  + A user should be able to mark a task as incomplete
  + A user should be able to delete a task
  + A user should be able to edit a task



  - Make the application look good
  - Make the application user friendly using javascript

  - A user should be able to assign a task to another user

    Task
      title: text
      completed: boolean
      completed_at: datetime
      created_at: datetime
      updated_at: datetime

Future topics

CSRF attacks and authenticity token


## Notes

Software Development

  For any feature
  1. Make it work in the simplest way with the ugliest code. Don't worry about
     code quality.
  2. Make it better, code quality wise, user interface wise.


URL Structure:

http://192.168.1.103:3000/tasks/?complete=1&other=test#foobar

http://
https://              #scheme

192.168.1.103
google.com
cosmicvent.com        #host

:3000                 #port
:80 == http
:443 == https

/tasks/foo            #path
/users/sign_in_

?completed=1&foo=other #query string

#foobar                #fragment
