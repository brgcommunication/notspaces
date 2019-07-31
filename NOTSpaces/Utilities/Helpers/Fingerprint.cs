using System;
using System.IO;
using System.Web;
using System.Web.Caching;
using System.Web.Hosting;

namespace NOTSpaces.Utilities.Helpers
{
    public class Fingerprint
    {
        public static string Tag(string rootRelativePath)
        {
            if (HttpRuntime.Cache[rootRelativePath] == null)
            {
                string absolute = HostingEnvironment.MapPath("~" + rootRelativePath);

                DateTime date = File.GetLastWriteTime(absolute);

                string result = rootRelativePath.Insert(rootRelativePath.Length, "?v=" + date.Ticks);

                HttpRuntime.Cache.Insert(rootRelativePath, result, new CacheDependency(absolute));
            }

            return HttpRuntime.Cache[rootRelativePath] as string;
        }

        public static string Revision(string rootRelativePath)
        {
            return Tag(rootRelativePath).Split('=').GetValue(1).ToString();
        }
    }
}