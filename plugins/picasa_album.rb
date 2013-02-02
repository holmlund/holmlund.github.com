require 'rubygems'
require 'nokogiri'
require 'open-uri'

module Jekyll
  class PicasaAlbumTag < Liquid::Tag
    def initialize(tag_name, rss_url, token)
      super

      @rss_url = rss_url

      @config = Jekyll.configuration({})['picasa_album'] || {}
      @config['thumbnail_size']  ||= 0;    # 0=small, 1=medium, 2=large
      ##
      @config['gallery_tag']    ||= 'div';
      @config['gallery_class']  ||= 'pie-gallery alignGalleryLeft';
      ##
      @config['title_tag']      ||= 'h2';
      ##
      @config['a_rel']          ||= /[0-9]+/.match(rss_url)
      @config['a_class']        ||= '';
      @config['a_target']        ||= '';
      ##
      @config['img_rel']        ||= '';
      @config['img_class']      ||= '';
    end

    def render(context)
      album = fetch_album_data
      html = "<#{@config['gallery_tag']} class=\"#{@config['gallery_class']}\">\n"
      album.photos.each do |photo|
        html += "<div class=\"pie-item\" style=\"margin:10px 10px 10px 10px;\">"
        html += "<p class=\"pie-img-wrapper\">"
        html += "<a href=\"#{photo.url}?imgmax=640\" rel=\"lightbox-#{@config['a_rel']}\">"
        html += "<img src=\"#{photo.thumbnail160}\" alt=\"#{photo.title}\" width=\"160\" height=\"160\" class=\"pie-img\"/>"
        html += "</a>"
        html += "</div>"
      end
      html += "</#{@gallery_tag}>"
      "#{html}"
    end

    def fetch_album_data
      @doc = Nokogiri::XML(open(@rss_url))
      album = PicasaAlbum.new(@config, @doc)
      @doc.xpath("//item").each do |item|
        album.photos << PicasaPhoto.new(@config, item)
      end
      album
    end
  end

  class PicasaAlbum
    attr_accessor :photos
    attr_reader :title, :last_update, :link, :thumbnail
    def initialize(config, node)
      @config = config
      @node = node

      @title = node.xpath("//channel/title").first.content
      @last_update = node.xpath("//channel/lastBuildDate").first.content
      @link = node.xpath("//channel/link").first.content
      @thumbnail = node.xpath("//channel/image/url").first.content

      @photos = Array.new
    end
  end

  class PicasaPhoto
    def initialize(config, node)
      @config = config
      @node = node
    end
    def picasa_link
      return @node.xpath("./link").first.content
    end
    def title
      return @node.xpath("./title").first.content
    end
    def url
      return @node.xpath("./media:group/media:content/@url").first.content
    end
    def description
      return @node.xpath("./media:group/media:description").first.content
    end
    def thumbnail
      return @node.xpath("./media:group/media:thumbnail/@url")[@config['thumbnail_size']].content
    end
    def thumbnail160
      url = @node.xpath("./media:group/media:content/@url").first.content
      title = @node.xpath("./title").first.content
      return url.gsub(title, "s160-c/"+title)
    end
  end
end
Liquid::Template.register_tag('picasa_album', Jekyll::PicasaAlbumTag)
