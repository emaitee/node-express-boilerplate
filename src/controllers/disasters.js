import db from '../models';
import { v4 as UUIDV4 } from 'uuid';
import moment from 'moment';

export function registerDisaster(req, res) {
  const {
    disasterCode,
    date,
    eventDate,
    state,
    lga,
    town,
    disaster,
    disasterLocation,
    disasterLocLng,
    disasterLocLat,
    inserted_by,
  } = req.body;
  const inserted_time = moment().format('DD-MM-YYYY');
  // const id = UUIDV4();

  db.sequelize
    .query(
      'call insert_disaster(:date,:id,:state,:lga,:town,:disaster,:location,:longitude,:latitude,:inserted_time,:inserted_by)',
      {
        replacements: {
          eventDate,
          disasterCode,
          state,
          lga,
          town,
          disaster,
          disasterLocation,
          disasterLocLng,
          disasterLocLat,
          inserted_time,
          inserted_by: 'Mustapha',
        },
      },
    )
    .then((results) => {
      res.json({ success: true, results });
    })
    .catch((err) => {
      res.json({ success: false, err });
    });
}

export function registerCasualty(req, res) {
  const {data} = req.body;
  const { disasterNo } = req.params;
  const inserted_time = moment().format('DD-MM-YYYY');
  const id = UUIDV4();
  let newData = [];
  data.forEach((item) =>
    newData.push([...item, 'Mustapha', id, disasterNo, inserted_time]),
  );

  db.sequelize
    .query(`INSERT INTO casualty_death(gender,age,death_casualty,total_no,inserted_by,casualty_id,disaster_id,inserted_time) VALUES ${newData
      .map((a) => '(?)')
      .join(',')};`)
    .then((results) => {
      res.json({ success: true, results });
    })
    .catch((err) => {
      res.json({ success: false, err });
    });
}

export function registerLostProperties(req, res) {
  const { data } = req.body;
  const { disasterNo } = req.params;
  const inserted_time = moment().format('DD-MM-YYYY');
  const id = UUIDV4();
  let newData = [];
  data.forEach((item) =>
    newData.push([...item, 'Mustapha', id, disasterNo, inserted_time]),
  );

  db.sequelize
    .query(
      `INSERT INTO property (item_loss,quantity,estimated_cost,inserted_by,propertyId,disasterId,inserted_time) VALUES ${newData
        .map((a) => '(?)')
        .join(',')};`,
      {
        replacements: newData,
      },
    )
    .then((results) => {
      res.json({ success: true, results });
    })
    .catch((err) => {
      res.json({ success: false, err });
    });
}

export function registerNeedAssistance(req, res) {
  const { data } = req.body;
  const { disasterNo } = req.params;
  const inserted_time = moment().format('DD-MM-YYYY');
  const id = UUIDV4();
  let newData = [];
  data.forEach((item) =>
    newData.push([...item, 'Mustapha', id, disasterNo, inserted_time]),
  );

  db.sequelize
    .query(
      `INSERT INTO property (item_loss,quantity,estimated_cost,inserted_by,propertyId,disasterId,inserted_time) VALUES ${newData
        .map((a) => '(?)')
        .join(',')};`,
      {
        replacements: newData,
      },
    )
    .then((results) => {
      res.json({ success: true, results });
    })
    .catch((err) => {
      res.json({ success: false, err });
    });
}

export function registerVictims(req, res) {
  const { data } = req.body;
  const { disasterNo } = req.params;
  const inserted_time = moment().format('DD-MM-YYYY');
  const id = UUIDV4();
  let newData = [];
  data.forEach((item) =>
    newData.push([...item, id, disasterNo, inserted_time]),
  );

  db.sequelize
    .query(
      `INSERT INTO victims
    (victim_id,
    disaster_id,
    name,
    gender,
    age,
    death,
    alive,
    any_casualty,
    hospital,
    location,
    displaced,
    injury_type,
    non_displaced,
    item_name,
    estimated_cost,
    quantity,
    inserted_by,
    inserted_time)`,
    )
    .then((results) => {
      res.json({ success: true, results });
    })
    .catch((err) => {
      res.json({ success: false, err });
    });
}
