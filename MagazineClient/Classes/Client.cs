using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MagazineClient
{
    public class Client
    {
        public string FirstName { get; private set; }
        public string LastName { get; private set; }
        public string Address { get; private set; }
        public string City { get; private set; }
        public string Province { get; private set; }
        public string PostalCode { get; private set; }
        public string PhoneNumber { get; private set; }
        public string Email { get; private set; }
        
        public Client(string FirstName, string LastName, string Address, string City, string Province, string PostalCode, string PhoneNumber, string Email)
        {
            this.FirstName = FirstName;
            this.LastName = LastName;
            this.Address = Address;
            this.City = City;
            this.Province = Province;
            this.PostalCode = PostalCode;
            this.PhoneNumber = PhoneNumber;
            this.Email = Email;
        }
    
    }

}