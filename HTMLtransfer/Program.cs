/*
 * You have an XML document and you need to convert it into a more readable file format.
 * For example, you have personnel data that is stored as an XML document and you need
 * to display it on a Web page or in a text file.
 *
 * Refer to: http://www.cnblogs.com/poissonnotes/archive/2011/05/12/2044580.html
 * http://www.codeproject.com/Articles/12047/How-to-Convert-XML-Files-to-HTML
 * By Wenlei Tan for RF on 5/8/2012
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;
using System.Xml.Xsl;

namespace HTMLtransfer
{
   class Program
   {
      static void Main(string[] args)
      {
         Console.WriteLine("Demo1:\n");

         XslCompiledTransform trans = new XslCompiledTransform();
         trans.Load(@"..\..\books.xsl");
         trans.Transform(@"..\..\books.xml", "out.html");

         Console.WriteLine("Your Demo:\n");
         // Create a resolver with default credentials.
         XmlUrlResolver resolver = new XmlUrlResolver();
         resolver.Credentials = System.Net.CredentialCache.DefaultCredentials;
         // transform the personnel.xml file to HTML
         XslTransform transform = new XslTransform();
         // load up the stylesheet
         transform.Load(@"..\..\PersonnelHTML.xsl", resolver);
         // perform the transformation
         transform.Transform(@"..\..\Personnel.xml", @"Personnel.html", resolver);
         // transform the personnel.xml file to comma delimited format
         // load up the stylesheet
         transform.Load(@"..\..\PersonnelCSV.xsl", resolver);
         // perform the transformation
         transform.Transform(@"..\..\Personnel.xml", @"Personnel1.csv", resolver);
      }
   }
}
