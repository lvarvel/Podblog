module Paperclip
# Custom paperclip processor that replaces the spaces
# with underscores in the file names.
# Adapted from http://urbanautomaton.com/blog/2011/04/22/paperclip-timestamping-attachments-on-upload/
  class Despacer < Processor
    def initialize(file, options={}, attachment=nil)
      super(file,options,attachment)
      despaced_filename
    end

    def despaced_filename
      original_filename = attachment.instance_read(:file_name)
      extension = File.extname(original_filename)
      new_filename = original_filename.gsub(' ', '_') rescue nil
      @attachment.instance_write(:file_name, new_filename)
    end

    def make
      @file
    end
  end
end
