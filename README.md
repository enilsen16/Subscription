#Has Many Practice with Subscription model

The idea was to use a join model rather than a join table to set up the realtionship. A join model also for multiple columns to be added besides just ids. 

To see the app, please run with rails installed:

    rails s
    localhost:3000/
  
After you run the server and visit localhost on your machine. You will be able to look at this sample.

The app models a magazine subscription model. Subscribers have books and those are tracked in the subscription model by how long that person subscribes to a particular book.
