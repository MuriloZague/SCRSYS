function removerBotao(btn) {
    btn.parentElement.parentElement.remove();
    numb --;
}

var numb = 0;

function addField(plusElement) {
    numb++;
    var novalinha = "";
    novalinha += '<p>';
    novalinha += '<div class="row">';
    novalinha += '<div>#' + numb + '</div>';
    novalinha += '<div class="col-lg-5"><input type="text" maxlength="500" class="form-control text-3 h-auto py-2" name="nomecompleto_participante" required style="display: initial; width: 400px;" placeholder="(Nome completo)"></div>';
    novalinha += '<div class="col-lg-2"><input type="text" maxlength="11" class="form-control text-3 h-auto py-2" name="cpf_participante" required style="display: initial; width: 125px;" placeholder="(CPF)"></div>';
    novalinha += '<div class="col-lg-3"> <label for="vinculo_participante"></label> <select style="height: 43.5px" name="vinculo_participante" id="vinculo_participante" required> <option value="" disabled selected>Vinculo escolar:</option> <option value="Aluno">Aluno</option> <option value="Egresso">Egresso</option> <option value="Pai de alunos">Pai de aluno</option> <option value="Filho de aluno">Filho de aluno</option> <option value="Conjuge de aluno">Conjuge de aluno</option> <option value="Professor">Professor</option> <option value="Filho de professor">Filho de professor</option> <option value="Conjuge de professores">Conjuge de professor</option> <option value="Funcionario">Funcionario</option> <option value="Filho de funcionario">Filho de funcionario</option> <option value="Conjuge de funcionarios">Conjuge de funcionario</option></select> </div>';
    novalinha += '<div class="col-lg-2"><span id="minus" class="btn btn-primary btn-modern" style="margin-left: 10px" onclick="removerBotao(this)">-</span> </div>';
    novalinha += '</div>';
    novalinha += '</p>';

    $("#linhadosparticipantes").append(novalinha);
}