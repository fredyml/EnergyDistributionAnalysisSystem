﻿namespace EDAS.Domain.Models
{
    public partial class Fecha
    {
        public Fecha()
        {
            Consumos = new HashSet<Consumo>();
            Costos = new HashSet<Costo>();
            Perdida = new HashSet<Perdidum>();
        }

        public int FechaId { get; set; }
        public DateTime Fecha1 { get; set; }

        public virtual ICollection<Consumo> Consumos { get; set; }
        public virtual ICollection<Costo> Costos { get; set; }
        public virtual ICollection<Perdidum> Perdida { get; set; }
    }
}
