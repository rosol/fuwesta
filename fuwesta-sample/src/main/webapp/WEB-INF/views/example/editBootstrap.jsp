<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE HTML>
<html lang="de-DE">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="pragma" content="no-cache">
    <title>Test of all Helper</title>
    <link rel="stylesheet" href="<c:url value = '/resources/css/bootstrap-ppi.css'/>">
    <link rel="stylesheet" href="/spring-mvc-sample/resources/css/smoothness/jquery-ui-1.9.1.custom.css">
    <link rel="stylesheet" href="/spring-mvc-sample/resources/css/smoothness/datetimepicker.css">
    <script type="text/javascript" src="/spring-mvc-sample/resources/js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="/spring-mvc-sample/resources/js/jquery-ui-1.9.1.custom.js"></script>
    <script type="text/javascript" src="/spring-mvc-sample/resources/js/chosen.jquery.js"></script>
    <script type="text/javascript" src="/spring-mvc-sample/resources/js/jquery-ui-timepicker-addon.js"></script>
    <script>
      $(function() {
        $('.chzn-select').chosen();
        $('.chzn-select-deselect').chosen({ allow_single_deselect: true });
        $('.datepicker').datepicker({
            showOn: "both",
            buttonImage: "/spring-mvc-sample/resources/css/calendar.gif",
            buttonImageOnly: true,
            dayNamesMin: [ "So", "Mo", "Di", "Mi", "Do", "Fr", "Sa" ],
            monthNamesShort: [ "Jan", "Feb", "Mrz", "Apr", "Mai", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Dez" ],
            dateFormat: "dd.mm.yy",
            changeMonth: true,
            changeYear: true,
            showWeek: true,
            firstDay: 1
        });
        //Based on http://trentrichardson.com/examples/timepicker/
        $('.datetimepicker').datetimepicker({
            showOn: "both",
            buttonImage: "/spring-mvc-sample/resources/css/calendar.gif",
            buttonImageOnly: true,
            dayNamesMin: [ "So", "Mo", "Di", "Mi", "Do", "Fr", "Sa" ],
            monthNamesShort: [ "Jan", "Feb", "Mrz", "Apr", "Mai", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Dez" ],
            dateFormat: "dd.mm.yy",
            changeMonth: true,
            changeYear: true,
            showWeek: true,
            firstDay: 1,
            timeFormat: 'hh:mm:ss',
            showSecond: true,
            hourGrid: 3,
            minuteGrid: 10,
            secondGrid: 10
        });
        $('.timepicker').timepicker({
            showOn: "both",
            buttonImage: "/spring-mvc-sample/resources/css/calendar.gif",
            buttonImageOnly: true,
            timeFormat: 'hh:mm:ss',
            showSecond: true,
            hourGrid: 3,
            minuteGrid: 10,
            secondGrid: 10
        });
      });
    </script>

</head>

<body id="doc">
    ${userId} äöü
    <form class="well form-horizontal">
        <fieldset>
            <input type="hidden" id="hiddenId" name="Hidden" value="hiddenValue"
            >
            <div class="control-group "
                    id="show_field">
                <label class="control-label  " for="show">Label4show:</label>
                <div class="controls  " >
                    <var id="showId" name="show" >exampleVar</var>
                </div>
            </div>
            <div class="control-group error "
                    id="text_field">
                <label class="control-label  " for="text">Label4Text:</label>
                <div class="controls  " >
                    <input type="text" id="textId" name="text" value="example"
                    >
                    <span class="help-inline">First error, Second error</span>
                    <span class="help-block">First info, Second info</span>
                </div>
            </div>

            <div class="control-group error "
                    id="date_field">
                <label class="control-label  " for="date">Label4Date:</label>
                <div class="controls  " >
                    <input type="text" id="dateId" name="date" value=""
                     class = "datepicker">
                    <span class="help-inline">First error, Second error</span>
                    <span class="help-block">First info, Second info</span>
                </div>
            </div>

            <div class="control-group error "
                    id="dateTime_field">
                <label class="control-label  " for="dateTime">Label4DateTime:</label>
                <div class="controls  " >
                    <input type="text" id="dateTimeId" name="dateTime" value=""
                     class = "datetimepicker">
                    <span class="help-inline">First error, Second error</span>
                    <span class="help-block">First info, Second info</span>
                </div>
            </div>

            <div class="control-group error "
                    id="time_field">
                <label class="control-label  " for="time">Label4Time:</label>
                <div class="controls  " >
                    <input type="text" id="timeId" name="time" value=""
                     class = "timepicker">
                    <span class="help-inline">First error, Second error</span>
                    <span class="help-block">First info, Second info</span>
                </div>
            </div>


            <div class="control-group error "
                    id="textArea_field">
                <label class="control-label  " for="textArea">Label4TextArea:</label>
                <div class="controls  " >
                    <textarea id="textAreaId" name="textArea" cols = "100" rows = "5">example for TextArea
                    </textarea>
                    <span class="help-inline">First error, Second error</span>
                    <span class="help-block">First info, Second info</span>
                </div>
            </div>

            <div class="control-group error "
                    id="password_field">
                <label class="control-label  " for="password">Label4password:</label>
                <div class="controls  " >
                    <input type="password" id="passwordId" name="password" value="example for password"
                    >
                    <span class="help-inline">First error, Second error</span>
                    <span class="help-block">First info, Second info</span>
                </div>
            </div>

            <div class="control-group error "
                    id="radioGroupinline_field">
                <label class="control-label  " for="radioGroupinline">Label4radioGroupINline:</label>
                <div class="controls  " >
                    <label class="radio inline">
                        <input type="radio" id="radioGroupInlineId_z" name="radioGroupInline" value="z"  >
                        Letzter Buchstabe
                    </label>
                    <label class="radio inline">
                        <input type="radio" id="radioGroupInlineId_a" name="radioGroupInline" value="a"  >
                        Anfangsbuchstabe
                    </label>
                    <label class="radio inline">
                        <input type="radio" id="radioGroupInlineId_b" name="radioGroupInline" value="b" checked >
                        Zweiter Buchstabe
                    </label>
                    <span class="help-inline">First error, Second error</span>
                    <span class="help-block">First info, Second info</span>
                </div>
            </div>

            <div class="control-group error "
                    id="radioGroup_field">
                <label class="control-label  " for="radioGroup">Label4radioGroup:</label>
                <div class="controls  " >
                    <span class="field-radio-group">
                        <label class="radio">
                            <input type="radio" id="radioGroupId_z" name="radioGroup" value="z"  >
                            Letzter Buchstabe
                        </label>
                        <label class="radio">
                            <input type="radio" id="radioGroupId_a" name="radioGroup" value="a"  >
                            Anfangsbuchstabe
                        </label>
                        <label class="radio">
                            <input type="radio" id="radioGroupId_b" name="radioGroup" value="b" checked >
                            Zweiter Buchstabe
                        </label>
                    </span>
                    <span class="help-inline">First error, Second error</span>
                    <span class="help-block">First info, Second info</span>
                </div>
            </div>

            <div class="control-group error "
                    id="comboBox_field">
                <label class="control-label  " for="comboBox">Label4comboBox:</label>
                <div class="controls  " >
                    <select id="comboBoxId" name="comboBox"  class = "chzn-select"><option value="z" >Letzter Buchstabe</option>
                    <option value="a" >Anfangsbuchstabe</option>
                    <option value="b" selected>Zweiter Buchstabe</option>
                    </select>
                    <span class="help-inline">First error, Second error</span>
                    <span class="help-block">First info, Second info</span>
                </div>
            </div>

            <div class="control-group error "
                    id="checkBox_field">
                <label class="control-label  " for="checkBox">Label4checkBox:</label>
                <div class="controls  " >
                    <label class="checkbox inline">
                        <input type="checkbox" id="checkBoxId" name="checkBox" value="true" checked >
                        <input type="hidden" name="checkBox" value="false" />
                        Wahr
                    </label>
                    <span class="help-inline">First error, Second error</span>
                    <span class="help-block">First info, Second info</span>
                </div>
            </div>
            <div class="control-group error "
                    id="file_field">
                <label class="control-label  " for="file">Label4file:</label>
                <div class="controls  " >
                    <input type="file" id="fileID" name="file" >
                    <span class="help-inline">First error, Second error</span>
                    <span class="help-block">First info, Second info</span>
                </div>
            </div>
       </fieldset>
    </form>
</body>
</html>
