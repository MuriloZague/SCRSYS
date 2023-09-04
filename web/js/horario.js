function atualizaHorarioTermino() {
    var dateDatahorainicioutilizacao_solicitacao = new Date(document.getElementById("datahorainicioutilizacao_solicitacao").value);
    var intQtdhorasutilizacao_solicitacao = document.getElementById("qtdhorasutilizacao_solicitacao").value;

    var stringDatahoraterminoutilizacao_solicitacao = dateDatahorainicioutilizacao_solicitacao.getTime() + (intQtdhorasutilizacao_solicitacao * 3600000);
    var dateDatahoraterminoutilizacao_solicitacao = new Date(stringDatahoraterminoutilizacao_solicitacao);

    var dia = dateDatahoraterminoutilizacao_solicitacao.getDate();
    var mes = dateDatahoraterminoutilizacao_solicitacao.getMonth() + 1;
    var ano = dateDatahoraterminoutilizacao_solicitacao.getFullYear();
    var hora = dateDatahoraterminoutilizacao_solicitacao.getHours();
    var minutos = dateDatahoraterminoutilizacao_solicitacao.getMinutes();

    if (dia < 10) {
        dia = "0" + dia;
    }
    if (mes < 10) {
        mes = "0" + mes;
    }
    if (minutos < 10) {
        minutos = "0" + minutos;
    }

    console.log(intQtdhorasutilizacao_solicitacao);

    if (intQtdhorasutilizacao_solicitacao < 1) {
        alert("A solicitacao deve conter no minimo 1 hora");
    }

    var stringDatahoraterminoutilizacao_solicitacao = dia + "/" + mes + "/" + ano + " " + hora + ":" + minutos;

    document.getElementById("datahoraterminoutilizacao_solicitacao").value = stringDatahoraterminoutilizacao_solicitacao;
}