function salvarEdicaoTurma() {
    var nome = $('#editNome').val();
    var descricao = $('#editDes').val();
    var id_usuario = $('#editUsu').val();

    $.ajax({
        url: '../php/salvar_edicao_usuario.php',
        method: 'POST',
        data: {
            nome: nome,
            descricao: descricao,
            id_usuario: id_usuario
        },
        success: function (response) {
            closeModal()
            alert('Turma editado!!!');
        },
        error: function (error) {
            console.error('Save error:', error);
            alert('Turma com erro para editar!!');
        }
    });
}