function modifingDiscipline() {
    var checkboxes = $('input[type=checkbox]:checked');
    if (checkboxes.length == 0) {
        alert("Пожалуйста, выберите хотя бы одну дисциплину!");
        return;
    }

    if (checkboxes.length > 1) {
        alert("Пожалуйста, выберите только одну дисциплину!");
        return;
    }

    var idDisc = checkboxes[0].value;
    $("#idModifDisc").val(idDisc);
    $("#modifDiscForm").submit();
}

function deleteDiscipline() {
    var checkboxes = $('input[type=checkbox]:checked');
    if (checkboxes.length == 0) {
        alert("Пожалуйста, выберите хотя бы одну дисциплину!");
        return;
    }

    var ids = "";
    for (var i = 0; i < checkboxes.length; i++) {
        ids = ids + checkboxes[i].value + ",";
    }

    $("#idsDeleteDisc").val(ids);
    $("#deleteDiscForm").submit();
}

function modifingStudent() {
    var checkboxes = $('input[type=checkbox]:checked');
    if (checkboxes.length == 0) {
        alert("Пожалуйста, выберите хотя бы одного студента!");
        return;
    }

    if (checkboxes.length > 1) {
        alert("Пожалуйста, выберите только одного студента!");
        return;
    }

    var idStud = checkboxes[0].value;
    $("#idModifStud").val(idStud);
    $("#modifStudForm").submit();
}

function deleteStudent() {
    var checkboxes = $('input[type=checkbox]:checked');
    if (checkboxes.length == 0) {
        alert("Пожалуйста, выберите хотя бы одного студента!");
        return;
    }

    var ids = "";
    for (var i = 0; i < checkboxes.length; i++) {
        ids = ids + checkboxes[i].value + ",";
    }

    $("#idsDeleteStud").val(ids);
    $("#deleteStudForm").submit();
}

function studentProgress() {
    var checkboxes = $('input[type=checkbox]:checked');
    if (checkboxes.length == 0) {
        alert("Пожалуйста, выберите хотя бы одного студента!");
        return;
    }

    if (checkboxes.length > 1) {
        alert("Пожалуйста, выберите только одного студента!");
        return;
    }

    var idSP = checkboxes[0].value;
    $("#idStudentProgress").val(idSP);
    $("#studentProgressForm").submit();
}