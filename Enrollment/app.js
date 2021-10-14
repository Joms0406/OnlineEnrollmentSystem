
//we can set animation delay as following in ms (default 1000)
ProgressBar.singleStepAnimation = 1500;
ProgressBar.init(
  [ 'Upload',
    'Basic Info',
    'Additional Info',
    'Payment',
    'Confirmation of Payment',
    'Confirmation of Enrollment',
    'Approved'
  ],
  'Upload',
  'progress-bar-wrapper' // created this optional parameter for container name (otherwise default container created)
);