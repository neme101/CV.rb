module Styling
	def size(text)
		2 + text.length + 2
	end

	def v_line(size,hchar,color=false)
		line = ''
		size.times do |c|
			line << hchar
		end
		if(color)
			line = colorize(line)
		end

		return line+"\r\n"
	end

	def table(headers,rows,hchar,vchar,th_color=false,td_color=false,lines_color=false)
		table = '';
		thead = '';
		tbody = '';
		tfoot = '';
		thead << vchar + ' '
		column_sizes = Array.new
		(1..headers.size).each do |i|
			thead << headers[i]
			if headers[i].length > rows[i].length
				 thead << ' ' + vchar
			else
				(rows[i].length - header[i].length)
			end
			column_sizes.push(headers[i].length+2)
		end
		table << v_line(thead.length,hchar,lines_color)
		table << thead+"\r\n"
		table << v_line(thead.length,hchar,lines_color)

		rows.each do |r|
			tbody << r + ' ' + vchar
		end

		table << v_line(thead.length,hchar,lines_color)
		table << tbody
		table << v_line(thead.length,hchar,lines_color)
	end
end

module Colorize
	# Coloring Output
	def colorize(text, color_code)
    	"#{color_code}#{text}\e[0m"
  	end
  	def red(text); 
    	colorize(text, "\e[31m"); 
  	end
  	def green(text); 
    	colorize(text, "\e[32m"); 
  	end
  	def yellow(text); 
    	colorize(text, "\e[33m"); 
  	end
  	def blue(text); 
    	colorize(text, "\e[34m"); 
  	end
  	def purple(text); 
    	colorize(text, "\e[35m"); 
  	end
end
