require "nothing_magical/version"

module NothingMagical
  def self.process(directory)
    extensions = ['rb', 'rake', 'haml']

    count = 0
    extensions.each do |ext|
     rbfiles = File.join(directory ,'**', '*.' + ext)
     Dir.glob(rbfiles).each do |filename|
      lines = File.readlines(filename)

        # remove current encoding comment(s)
        while lines[0].match(/^-?# ?(-\*-)? ?(en)?coding/)
          lines.shift
          count += 1
        end

        File.write(filename, lines.join)
      end
    end

    puts "Magic comments removed for #{count} source files"
  end
end

