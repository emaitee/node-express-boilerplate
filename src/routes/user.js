import passport from 'passport';
import config from '../config/config';
import { allowOnly } from '../services/routesHelper';
import {
  create,
  login,
  findAllUsers,
  findById,
  update,
  deleteUser,
  getUserProfile,
} from '../controllers/user';

module.exports = (app) => {
  // create a new user
  app.post('/api/users/create', create);

  // user login
  app.post('/api/users/login', login);

  app.get('/api/users/profile', getUserProfile)

  //retrieve all users
  app.get(
    '/api/users',
    passport.authenticate('jwt', {
      session: false,
    }),
    allowOnly(config.accessLevels.admin, findAllUsers),
  );

  // retrieve user by id
  app.get(
    '/api/users/:userId',
    passport.authenticate('jwt', {
      session: false,
    }),
    allowOnly(config.accessLevels.admin, findById),
  );

  // update a user with id
  app.put(
    '/api/users/:userId',
    passport.authenticate('jwt', {
      session: false,
    }),
    allowOnly(config.accessLevels.user, update),
  );

  // delete a user
  app.delete(
    '/api/users/:userId',
    passport.authenticate('jwt', {
      session: false,
    }),
    allowOnly(config.accessLevels.admin, deleteUser),
  );
};
