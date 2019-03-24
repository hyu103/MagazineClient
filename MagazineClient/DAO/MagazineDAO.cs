using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Data;
using System.Data.OracleClient;

namespace MagazineClient
{
    public class MagazineDAO
    {
        private string UserName { get; set; }
        private string Password { get; set; }

        public MagazineDAO(string UserName, string Password)
        {
            this.UserName = UserName;
            this.Password = Password;
        }
        internal void AddCustomer(string firstName, string lastName, string address, string city, string province, string postalCode, string phoneNumber, string email)
        {
            OracleConnection conn = new OracleConnection(String.Format("Data Source=Neptune; User Id={0}; Password={1}", UserName, Password));
            OracleCommand cmd = new OracleCommand("INSERT INTO client (client_id, first_name, last_name, address, city, province, postal_code, phone_number, email) VALUES (client_id_sequence.NEXTVAL, :firstname, :lastname, :address, :city, :province, :postalCode, :phoneNumber, :email)", conn);
            
            if (string.IsNullOrEmpty(firstName))
                cmd.Parameters.Add(":firstName", OracleType.VarChar).Value = DBNull.Value;
            else
                cmd.Parameters.AddWithValue(":firstName", firstName);

            if (string.IsNullOrEmpty(lastName))
                cmd.Parameters.Add(":lastName", OracleType.VarChar).Value = DBNull.Value;
            else
                cmd.Parameters.AddWithValue(":lastName", lastName);

            if (string.IsNullOrEmpty(address))
                cmd.Parameters.Add(":address", OracleType.VarChar).Value = DBNull.Value;
            else
                cmd.Parameters.AddWithValue(":address", address);

            if (string.IsNullOrEmpty(city))
                cmd.Parameters.Add(":city", OracleType.VarChar).Value = DBNull.Value;
            else
                cmd.Parameters.AddWithValue(":city", city);

            if (string.IsNullOrEmpty(province))
                cmd.Parameters.Add(":province", OracleType.VarChar).Value = DBNull.Value;
            else
                cmd.Parameters.AddWithValue(":province", province);

            if (string.IsNullOrEmpty(postalCode))
                cmd.Parameters.Add(":postalCode", OracleType.VarChar).Value = DBNull.Value;
            else
                cmd.Parameters.AddWithValue(":postalCode", postalCode);

            if (string.IsNullOrEmpty(phoneNumber))
                cmd.Parameters.Add(":phoneNumber", OracleType.VarChar).Value = DBNull.Value;
            else
                cmd.Parameters.AddWithValue(":phoneNumber", phoneNumber);

            if (string.IsNullOrEmpty(email))
                cmd.Parameters.Add(":email", OracleType.VarChar).Value = DBNull.Value;
            else
                cmd.Parameters.AddWithValue(":email", email);

            conn.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
            }

        }


    }
}