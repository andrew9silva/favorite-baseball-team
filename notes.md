Controllers
   
Models
  Users
    has many comments 
  Teams
    has many comments 
  Comments
    belongs to user 
    belongs to team
Views
  Users
    create user/login
    see all comments* 
  Teams
    User must select their team from checkbox list
    See all comments
  Comments
    Create comment*
    edit comment* 
    delete comment*
    * only if user logged in.