var getLocalization = function (culture) {
    var localization = null;
    switch (culture) {
        case "es":
            localization =
             {
                 // separator of parts of a date (e.g. '/' in 11/05/1955)
                 '/': "/",
                 // separator of parts of a time (e.g. ':' in 05:44 PM)
                 ':': ":",
                 // the first day of the week (0 = Sunday, 1 = Monday, etc)
                 firstDay: 1,
                 days: {
                     // full day names
                     names: ["Lunes", "Martes", "Miercoles", "Jueves", "Donnerstag", "Freitag", "Samstag"],
                     // abbreviated day names
                     namesAbbr: ["Sonn", "Mon", "Dien", "Mitt", "Donn", "Fre", "Sams"],
                     // shortest day names
                     namesShort: ["So", "Mo", "Di", "Mi", "Do", "Fr", "Sa"]
                 },

                 months: {
                     // full month names (13 months for lunar calendards -- 13th month should be "" if not lunar)
                     names: ["Januar", "Februar", "März", "April", "Mai", "Juni", "Juli", "August", "September", "Oktober", "November", "Dezember", ""],
                     // abbreviated month names
                     namesAbbr: ["Jan", "Feb", "Mär", "Apr", "Mai", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dez", ""]
                 },
                 // AM and PM designators in one of these forms:
                 // The usual view, and the upper and lower case versions
                 //      [standard,lowercase,uppercase]
                 // The culture does not use AM or PM (likely all standard date formats use 24 hour time)
                 //      null
                 AM: ["AM", "am", "AM"],
                 PM: ["PM", "pm", "PM"],
                 eras: [
                 // eras in reverse chronological order.
                 // name: the name of the era in this culture (e.g. A.D., C.E.)
                 // start: when the era starts in ticks (gregorian, gmt), null if it is the earliest supported era.
                 // offset: offset in years from gregorian calendar
                 { "name": "A.D.", "start": null, "offset": 0 }
                 ],
                 twoDigitYearMax: 2029,
                 patterns:
                  {
                      d: "dd.MM.yyyy",
                      D: "dddd, d. MMMM yyyy",
                      t: "HH:mm",
                      T: "HH:mm:ss",
                      f: "dddd, d. MMMM yyyy HH:mm",
                      F: "dddd, d. MMMM yyyy HH:mm:ss",
                      M: "dd MMMM",
                      Y: "MMMM yyyy"

                  },
                 percentsymbol: "%",
                 currencysymbol: "€",
                 currencysymbolposition: "after",
                 decimalseparator: '.',
                 thousandsseparator: ',',
                 pagergotopagestring: "ir a pagina",
                 pagershowrowsstring: "Zeige Zeile:",
                 pagerrangestring: " von ",
                 pagerpreviousbuttonstring: "nächster",
                 pagernextbuttonstring: "voriger",
                 pagerfirstbuttonstring: "primero",
                 pagerlastbuttonstring: "ultimo",
                 groupsheaderstring: "Ziehen Sie eine Kolumne und legen Sie es hier zu Gruppe nach dieser Kolumne",
                 sortascendingstring: "Sortiere aufsteigend",
                 sortdescendingstring: "Sortiere absteigend",
                 sortremovestring: "Entferne Sortierung",
                 groupbystring: "Group By this column",
                 groupremovestring: "Remove from groups",
                 filterclearstring: "Löschen",
                 filterstring: "Filtrar",
                 filtershowrowstring: "Zeige Zeilen, in denen:",
                 filterorconditionstring: "Oder",
                 filterandconditionstring: "Und",
                 filterselectallstring: "(Alle auswählen)",
                 filterchoosestring: "Bitte wählen Sie:",
                 filterstringcomparisonoperators: ['leer', 'nicht leer', 'enthält', 'enthält(gu)',
                    'nicht enthalten', 'nicht enthalten(gu)', 'beginnt mit', 'beginnt mit(gu)',
                    'endet mit', 'endet mit(gu)', 'equal', 'gleich(gu)', 'null', 'nicht null'],
                 filternumericcomparisonoperators: ['gleich', 'nicht gleich', 'weniger als', 'kleiner oder gleich', 'größer als', 'größer oder gleich', 'null', 'nicht null'],
                 filterdatecomparisonoperators: ['gleich', 'nicht gleich', 'weniger als', 'kleiner oder gleich', 'größer als', 'größer oder gleich', 'null', 'nicht null'],
                 filterbooleancomparisonoperators: ['gleich', 'nicht gleich'],
                 validationstring: "Der eingegebene Wert ist ungültig",
                 emptydatastring: "Nokeine Daten angezeigt",
                 filterselectstring: "Wählen Sie Filter",
                 loadtext: "Cargando... espere por favor",
                 clearstring: "Löschen",
                 todaystring: "Hoy"
             }
            break;
        case "en":
        default:
            localization =
            {
                // separator of parts of a date (e.g. '/' in 11/05/1955)
                '/': "/",
                // separator of parts of a time (e.g. ':' in 05:44 PM)
                ':': ":",
                // the first day of the week (0 = Sunday, 1 = Monday, etc)
                firstDay: 0,
                days: {
                    // full day names
                    names: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
                    // abbreviated day names
                    namesAbbr: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
                    // shortest day names
                    namesShort: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]
                },
                months: {
                    // full month names (13 months for lunar calendards -- 13th month should be "" if not lunar)
                    names: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December", ""],
                    // abbreviated month names
                    namesAbbr: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", ""]
                },
                // AM and PM designators in one of these forms:
                // The usual view, and the upper and lower case versions
                //      [standard,lowercase,uppercase]
                // The culture does not use AM or PM (likely all standard date formats use 24 hour time)
                //      null
                AM: ["AM", "am", "AM"],
                PM: ["PM", "pm", "PM"],
                eras: [
                // eras in reverse chronological order.
                // name: the name of the era in this culture (e.g. A.D., C.E.)
                // start: when the era starts in ticks (gregorian, gmt), null if it is the earliest supported era.
                // offset: offset in years from gregorian calendar
                { "name": "A.D.", "start": null, "offset": 0 }
                ],
                twoDigitYearMax: 2029,
                patterns: {
                    // short date pattern
                    d: "M/d/yyyy",
                    // long date pattern
                    D: "dddd, MMMM dd, yyyy",
                    // short time pattern
                    t: "h:mm tt",
                    // long time pattern
                    T: "h:mm:ss tt",
                    // long date, short time pattern
                    f: "dddd, MMMM dd, yyyy h:mm tt",
                    // long date, long time pattern
                    F: "dddd, MMMM dd, yyyy h:mm:ss tt",
                    // month/day pattern
                    M: "MMMM dd",
                    // month/year pattern
                    Y: "yyyy MMMM",
                    // S is a sortable format that does not vary by culture
                    S: "yyyy\u0027-\u0027MM\u0027-\u0027dd\u0027T\u0027HH\u0027:\u0027mm\u0027:\u0027ss",
                    // formatting of dates in MySQL DataBases
                    ISO: "yyyy-MM-dd hh:mm:ss",
                    ISO2: "yyyy-MM-dd HH:mm:ss",
                    d1: "dd.MM.yyyy",
                    d2: "dd-MM-yyyy",
                    d3: "dd-MMMM-yyyy",
                    d4: "dd-MM-yy",
                    d5: "H:mm",
                    d6: "HH:mm",
                    d7: "HH:mm tt",
                    d8: "dd/MMMM/yyyy",
                    d9: "MMMM-dd",
                    d10: "MM-dd",
                    d11: "MM-dd-yyyy"
                },
                percentsymbol: "%",
                currencysymbol: "$",
                currencysymbolposition: "anterior",
                decimalseparator: '.',
                thousandsseparator: ',',
                pagergotopagestring: "Ir a pagina:",
                pagershowrowsstring: "Mostrar filas:",
                pagerrangestring: " de ",
                pagerpreviousbuttonstring: "anterior",
                pagernextbuttonstring: "siguiente",
                pagerfirstbuttonstring: "primero",
                pagerlastbuttonstring: "ultimo",
                groupsheaderstring: "Drag a column and drop it here to group by that column",
                sortascendingstring: "Ordenar Ascendente",
                sortdescendingstring: "Ordenar Descendente",
                sortremovestring: "Quitar orden",
                groupbystring: "Agrupar por esta columna",
                groupremovestring: "Quitar de los grupos",
                filterclearstring: "Limpiar",
                filterstring: "Filtrar",
                filtershowrowstring: "Mostrar filas donde:",
                filterorconditionstring: "O",
                filterandconditionstring: "Y",
                filterselectallstring: "(Seleccionar Todo)",
                filterchoosestring: "Por favor Selecciona:",
                filterstringcomparisonoperators: ['vacio', 'no vacio', 'enthalten', 'enthalten(match case)',
                   'does not contain', 'does not contain(match case)', 'starts with', 'starts with(match case)',
                   'ends with', 'ends with(match case)', 'equal', 'equal(match case)', 'null', 'not null'],
                filternumericcomparisonoperators: ['equal', 'not equal', 'less than', 'less than or equal', 'greater than', 'greater than or equal', 'null', 'not null'],
                filterdatecomparisonoperators: ['equal', 'not equal', 'less than', 'less than or equal', 'greater than', 'greater than or equal', 'null', 'not null'],
                filterbooleancomparisonoperators: ['equal', 'not equal'],
                validationstring: "Entered value is not valid",
                emptydatastring: "No hay datos que mostrar",
                filterselectstring: "Seleccione Filtro",
                loadtext: "Cargando...",
                clearstring: "Limpiar",
                todaystring: "Hoy"
            }
            break;
    }
    return localization;
}