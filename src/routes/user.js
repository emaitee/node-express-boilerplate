import passport from 'passport';

module.exports = app => {
  const users = require('../controllers/user');
  const config = require('../config/config');
  const allowOnly = require('../services/routesHelper').allowOnly;

  // create a new user
  app.post(
    '/api/users/create',
    passport.authenticate('jwt', { session: false }),
    allowOnly(config.accessLevels.admin, users.create)
  );

  // user login
  app.post('/api/users/login', users.login);

  //retrieve all users
  app.get(
    '/api/users', 
    passport.authenticate('jwt', { 
      session: false 
    }),
    allowOnly(config.accessLevels.admin, users.findAllUsers)
  );

  // retrieve user by id
  app.get(
    '/api/users/:userId',
    passport.authenticate('jwt', {
      session: false,
    }),
    allowOnly(config.accessLevels.admin, users.findById)
  );

  // update a user with id
  app.put(
    '/api/users/:userId',
    passport.authenticate('jwt', {
      session: false,
    }),
    allowOnly(config.accessLevels.user, users.update)
  );

  // delete a user
  app.delete(
    '/api/users/:userId',
    passport.authenticate('jwt', {
      session: false,
    }),
    allowOnly(config.accessLevels.admin, users.delete)
  );

};
