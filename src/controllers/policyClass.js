import db from '../models'

function queryPolicyClass({}, success = (f) => f, error = (f) => f) {
  db.sequelize
    .query('CALL query_policy_class()')
    .then((results) => callback(results))
    .catch((err) => error(err))
}

export const getPolicyClass = (req, res) => {
  queryPolicyClass(req.body, (results) => {
    res.json({ success: true, results })
  }).catch((err) => {
    console.log(err)
    res.status(500).json({ success: false, err })
  })
}

