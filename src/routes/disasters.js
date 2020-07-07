import passport from 'passport';
import config from '../config/config';
import { allowOnly } from '../services/routesHelper';
import { registerDisaster } from '../controllers/disasters';

module.exports = (app) => {
  // register a new disaster
  app.post(
    '/api/disaster/register',
    passport.authenticate('jwt', { session: false }),
    allowOnly(config.accessLevels.user, registerDisaster),
  );
};
