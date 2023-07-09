﻿namespace EDAS.Domain.Models
{
    public partial class Sector
    {
        public Sector()
        {
            Consumos = new HashSet<Consumo>();
            Costos = new HashSet<Costo>();
            Perdida = new HashSet<Perdidum>();
        }

        public int SectorId { get; set; }
        public string Nombre { get; set; } = null!;

        public virtual ICollection<Consumo> Consumos { get; set; }
        public virtual ICollection<Costo> Costos { get; set; }
        public virtual ICollection<Perdidum> Perdida { get; set; }
    }
}
