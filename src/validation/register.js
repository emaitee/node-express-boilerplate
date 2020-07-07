import Validator from 'validator';
import isEmpty from './isEmpty';

function validateRegisterForm(data) {
  let errors = {};

  data.name = !isEmpty(data.name) ? data.name : '';
  data.username = !isEmpty(data.username) ? data.username : '';
  data.email = !isEmpty(data.email) ? data.email : '';
  data.password = !isEmpty(data.password) ? data.password : '';

  if (!Validator.isLength(data.name, { min: 2, max: 30 })) {
    errors.name = 'Name must be between 2 and 30 character long';
  }

  if (Validator.isEmpty(data.name)) {
    errors.name = 'Name field is required';
  }

  if (Validator.isEmpty(data.username)) {
    errors.username = 'username field is required';
  }

  if (Validator.isEmpty(data.email)) {
    errors.email = 'email field is required';
  }

  if (!Validator.isEmail(data.email)) {
    errors.email = 'email is invalid';
  }

  if (Validator.isEmpty(data.password)) {
    errors.password = 'password field is required';
  }

  if (!Validator.isLength(data.password, { min: 6, max: 30 })) {
    errors.password = 'password must be at least 6 characters long';
  }

  return {
    errors,
    isValid: isEmpty(errors),
  };
};

export default validateRegisterForm;