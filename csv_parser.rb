begin
    File.open("data.csv", "r") do |file|
        $lines = file.readlines
    end

    keys = $lines[0].strip.split(",")
    hash_array = []

    columns = keys.length
    rows = $lines.length - 1

    (1..rows).each do |i|
        row = {}
        data = $lines[i].strip.split(",")
        
        (0...columns).each do |j|
            row[keys[j]] = data[j]
        end

        hash_array.push(row)
    end

    puts hash_array
    

rescue StandardError => e
    puts e.message
end


