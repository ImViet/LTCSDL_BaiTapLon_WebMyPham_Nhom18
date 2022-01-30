using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebMyPham.Models
{
    [Serializable]
    public class Cart
    {
        public string MaSP { get; set; }
        public string TenSP { get; set; }
        public string HinhSP { get; set; }
        public double DonGia { get; set; }
        public int SoLuong { get; set; }
        public double ThanhTien
        {
            get { return SoLuong * DonGia; }
        }
    }
}