function NoticiasDAO(connection) {
    this.connection = connection;
}
NoticiasDAO.prototype.getNoticias = function (callback) {
    this.connection.query("select * from noticias", callback)
}

NoticiasDAO.prototype.getNoticia = function (callback) {
    this.connection.query("select * from noticias where id_noticia = 2;", callback)
}

NoticiasDAO.prototype.SalvarNoticia = function (noticia, callBack) {
    console.log(noticia);
    this.connection.query("insert into noticias set ?",noticia, callBack);
    // console.log(noticia)
    
}


module.exports = function () {  
    
    return NoticiasDAO;
}