<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<link rel='stylesheet' type='text/css' href='http://www.blueb.co.kr/data/201010/IJ12872423858253/fullcalendar.css' />
<script type='text/javascript' src='http://www.blueb.co.kr/data/201010/IJ12872423858253/jquery.js'></script>
<script type='text/javascript' src='http://www.blueb.co.kr/data/201010/IJ12872423858253/jquery-ui-custom.js'></script>
 
        <link href='resources/css/albamanage.css' rel='stylesheet' />
          <link href='resources/css/albamanagecus.css' rel='stylesheet' />
        <link href='resources/css/cal/albamanage.css' rel='stylesheet' />

        <script src='resources/js/albamanage.js'></script>
        <script src='resources/js/interaction.js'></script>
        <script src='resources/js/cal/albamanage.js'></script>

   
      <script type="text/javascript">
      document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {

      plugins: [ 'interaction', 'dayGrid' ],
         locale: 'ko',
       themeSystem: 'bootstrap',
      defaultView: 'dayGridMonth',

       selectable: true,
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      dateClick: function(info) {
     alert('지가아아악');
   },
    select: function(info) {
      alert('정시출석');
    },
      events: [
        {
          title: 'All Day Event',
          start: '2019-05-01'
        },
        {
          title: 'Long Event',
          start: '2019-04-07',
          end: '2019-04-10'
        },

      ]
    });

    calendar.render();
  });
   </script>
</head>
<body>
<div id='calendar'></div>
</body>
</html>