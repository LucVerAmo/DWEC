namespace TiendaTFS.Models
{
    public class Escaparate
    {
        public int Id { get; set; }
        public Producto Producto { get; set; }
        public Categoria Categoria { get; set; }
    }
}
