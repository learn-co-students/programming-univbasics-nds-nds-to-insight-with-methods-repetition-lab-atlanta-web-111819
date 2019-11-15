$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'


'''ruby

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def lod(source)
  directors_database = [[[{:name => "Stephen Spielberg",:total => "1357566430"}, {:name => "Russo Brothers", :total => "2281002470"},
  {:name => "James Cameron", :total => "2571020373"}, {:name => "Spike Lee", :total => "256624217"},
  {:name => "Wachowski Siblings", :total => "806180282"}, {:name => "Robert Zemeckis", :total => "1273838385"},
  {:name => "Quentin Tarantino", :total => "662738268"}, {:name =>"Martin Scorsese", :total => "636812242"},
  {:name =>  "Francis Ford Coppola", :total => "509719258"}
]]]
end

def total_gross(source)
    coordinate_total = 0
    inner_len = nds[row_index][column_index].length
    inner_index = 0
    while inner_index < inner_len do
      coordinate_total += nds[row_index][column_index][inner_index][:total]
      inner_index += 1
    end
    coordinate_total
  end

  def total_gross
    grand_row_total = 0
    column_index = 0
    while column_index < nds[row_index].length do
      grand_row_total += total_gross (nds, row_index, column_index)
      column_index += 1
    end
    grand_row_total
  end

  grand_total = 0
  row_index = 0
  while row_index < .length do
    grand_total += total_gross(lod, row_index)
    row_index += 1
  end

  p grand_total
end
