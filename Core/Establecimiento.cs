public class Establecimiento : IEstablecimiento
{
    public string Direccion { get; set; }
    public string Nombre { get; set; }
    public bool AccesoSillaRuedas { get; set; }
    public List<Beepcon> Beepcons { get; set; }
}