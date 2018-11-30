using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace Common
{
    public static class MailHelper
    {
        public static void SendMailAuthentication(string toEmail, string tenkh,string sosim,string subject,string thang,string tienThueBao, string tienCuoc,string tongtien)
        {
            var fromEmailAddress = "trungsendmailnek@gmail.com";
            var fromEmailDisplayName = "Quản lý tính cước tháng"+thang;
            var fromEmailPassword = "trungbonmat";
            var smtpHost = "smtp.gmail.com";
            var smtpPort = "587";

            bool enabledSsl =true;
            MailMessage message = new MailMessage(new MailAddress(fromEmailAddress, fromEmailDisplayName), new MailAddress(toEmail));
            message.Subject = subject;
            message.IsBodyHtml = true;
            message.Body = "<p class=\"alignCenter\">Hóa đơn cước tháng"+thang+
                "<br/>" +
                "<p> Khách hàng: <b style=\"color: red\"> " + tenkh +
                "<p> Số SIM: <b style=\"color: red\"> " +  sosim +
                "<p> Tiền thuê bao: <b style=\"color: red\"> " + tienThueBao+" vnd"+
                "<p> Tiền cước: <b style=\"color: red\"> " + tienCuoc + " vnd" +
                "<p> Tổng tiền là: <b style=\"color: red\"> " + tongtien + " vnd";

            var client = new SmtpClient();
            client.Credentials = new NetworkCredential(fromEmailAddress, fromEmailPassword);
            client.Host = smtpHost;
            client.EnableSsl = enabledSsl;
            client.Port = !string.IsNullOrEmpty(smtpPort) ? Convert.ToInt32(smtpPort) : 0;
            client.Send(message);
        }
    }
}
