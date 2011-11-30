# We have a custom paperclip processor that adds a 
# timestamp prefix to the filename.  Useful for CDNs like
# Cloudfront.
#
# Totally stolen from http://urbanautomaton.com/blog/2011/04/22/paperclip-timestamping-attachments-on-upload/

module Paperclip
  class TimeStamper < Processor
    def initialize(file, options={}, attachment=nil)
      super(file,options,attachment)
      timestamp_filename
    end

    def timestamp_filename
      original_filename = attachment.instance_read(:file_name)
      extension = File.extname(original_filename)
      date_format = @attachment.options[:date_format] ||
                    "%Y%m%d%H%M%S"
      timestamp = DateTime.now.strftime(date_format)
      new_filename = "#{timestamp}-#{original_filename}"
      @attachment.instance_write(:file_name, new_filename)
    end

    def make
      @file
    end
  end
end
