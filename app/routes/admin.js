module.exports = function (aplication) {

    aplication.get("/formulario_inclusao_noticia", function (req, res) {
        aplication.app.controller.admin.formulario_inclusao_noticia(aplication, req, res)
    })


    aplication.post("/noticias/salvar", function (req, res) {
       aplication.app.controller.admin.noticias_salvar(aplication, req, res);
})
}

// corrigir erro de noticia undefine