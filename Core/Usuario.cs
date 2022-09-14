using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Table("Usuario")]
public class Usuario
{
    [Key]
    public int Id { get; set; }
    [StringLength(45)]
    public string? Nombre { get; set; }
    [StringLength(45)]
    public string? Apellido { get; set; }
    [StringLength(45)]
    public string? email { get; set; }
    [StringLength(45)]
    public string? Discapacidad { get; set; }
    public List<Visita> Visitas { get; set; }
}