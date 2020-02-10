using System.Collections.Generic;
using Umbraco.Core.Models;

namespace NOTSpaces.Utilities.Models
{
    public class MediasViewModel
    {
        public List<IPublishedContent> Medias { get; set; }

        public int Width { get; set; }

        public int Height { get; set; }

        public string CssModifiers { get; set; }

        public string HtmlAttributes { get; set; }

        public SliderViewModel SliderConfig { get; set; }


        public MediasViewModel(List<IPublishedContent> medias, int width = 0, int height = 0, string cssModifiers = null, string htmlAttributes = null, SliderViewModel sliderConfig = null)
        {
            Medias = medias;
            Width = width;
            Height = height;


            if (!string.IsNullOrEmpty(cssModifiers))
            {
                CssModifiers = cssModifiers;
            }

            if (!string.IsNullOrEmpty(htmlAttributes))
            {
                HtmlAttributes = htmlAttributes;
            }

            if (sliderConfig != null)
            {
                SliderConfig = sliderConfig;
            }
        }

        public MediasViewModel() { }
    }

    public class SliderViewModel
    {
        public string SlidesToShow { get; set; }

        public string SlidesToScroll { get; set; }

        public string CssModifiers { get; set; }

        public string SlideCounterLabel { get; set; }

        public string HtmlAttributes { get; set; }

        public SliderViewModel(string slidesToShow = null, string slidesToScroll = null, string cssModifiers = null, string slideCounterLabel = null, string htmlAttributes = null)
        {
            if (!string.IsNullOrEmpty(slidesToShow))
            {
                SlidesToShow = slidesToShow;
            }

            if (!string.IsNullOrEmpty(slidesToScroll))
            {
                SlidesToScroll = slidesToScroll;
            }

            if (!string.IsNullOrEmpty(cssModifiers))
            {
                CssModifiers = cssModifiers;
            }

            if (!string.IsNullOrEmpty(slideCounterLabel))
            {
                SlideCounterLabel = slideCounterLabel;
            }

            if (!string.IsNullOrEmpty(htmlAttributes))
            {
                HtmlAttributes = htmlAttributes;
            }
        }
    }

}