namespace TiendaTFS.Models
{
    public class Carrito
    {
        public int Id { get; set; }
        public Producto Producto { get; set; }
        public Pedido Pedido { get; set; }
    }
}
