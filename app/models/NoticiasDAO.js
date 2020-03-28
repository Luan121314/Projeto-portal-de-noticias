function NoticiasDAO(connection) {
    this.connection = connection;
}
NoticiasDAO.prototype.getNoticias = function (callback) {
    this.connection.query("select * from noticias order by data_inclusao desc", callback)
}

NoticiasDAO.prototype.getNoticia = function (query,callback) {
    this.connection.query("select * from noticias where id_noticia = "+query.id_noticia, callback)
}

NoticiasDAO.prototype.SalvarNoticia = function (noticia, callBack) {
    console.log(noticia);
    this.connection.query("insert into noticias set ?",noticia, callBack);
    // console.log(noticia)
    
}
NoticiasDAO.prototype.getLastNoticias = function(callBack){
    this.connection.query('select * from noticias order by data_inclusao desc limit 5;', callBack)
}


module.exports = function () {  
    
    return NoticiasDAO;
}