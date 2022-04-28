using System.Security.Cryptography;

namespace AcaEspacial.Servicios
{
    public class PaswordHasher
    {
        public string HashPassword(string password)
        {
            if (password == null)
                throw new ArgumentNullException(nameof(password));
            byte[] salt;
            byte[] bytes;
            using (Rfc2898DeriveBytes rfc2898DeriveBytes = new Rfc2898DeriveBytes(password, 16, 1000))
            {
                salt = rfc2898DeriveBytes.Salt;
                bytes = rfc2898DeriveBytes.GetBytes(32);
            }
            byte[] inArray = new byte[49];
            Buffer.BlockCopy(salt, 0, inArray, 1, 16);
            Buffer.BlockCopy(bytes, 0, inArray, 17, 32);
            return Convert.ToBase64String(inArray);
        }

        public bool VerifyHashedPassword(string hashedPassword, string password)
        {
            if (hashedPassword == null)
                return false;
            if (password == null)
                throw new ArgumentNullException(nameof(password));
            byte[] numArray = Convert.FromBase64String(hashedPassword);
            if (numArray.Length != 49 || numArray[0] != 0)
                return false;
            byte[] salt = new byte[16];
            Buffer.BlockCopy(numArray, 1, salt, 0, 16);
            byte[] a = new byte[32];
            Buffer.BlockCopy(numArray, 17, a, 0, 32);
            byte[] bytes;
            using (Rfc2898DeriveBytes rfc2898DeriveBytes = new Rfc2898DeriveBytes(password, salt, 1000))
                bytes = rfc2898DeriveBytes.GetBytes(32);

            return ByteArraysEqual(a, bytes);
        }

        private bool ByteArraysEqual(byte[] a, byte[] b)
        {
            if (a == b)
                return true;
            if (a == null || b == null || a.Length != b.Length)
                return false;
            bool flag = true;
            for (int index = 0; index < a.Length; ++index)
                flag &= a[index] == b[index];
            return flag;
        }

    }


}

