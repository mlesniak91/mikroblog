Sequel.migration do
  change do
    create_table :articles do
      primary_key :id
      String :title, null: false
      String :body, text: true, null: false
      Timestamp :created_at, null: false, default: 'now()'
    end
    self[:articles].insert([1, 'Framework Lotus', 'Lotus is a modular web framework. It scales from single file HTTP endpoints to multiple applications in the same Ruby process. 
                                                                                                      Unlike other Ruby web frameworks, Lotus has flexible conventions for code structure. Developers can arrange the layout of their 
                                                                                                      projects as they prefer. There is a suggested architecture that can be easily changed with a few settings.', '2015-05-24 10:45:01'])
    self[:articles].insert([2, 'Framework Lotus', 'Lotus is a modular web framework. It scales from single file HTTP endpoints to multiple applications in the same Ruby process. 
                                                                                                      Unlike other Ruby web frameworks, Lotus has flexible conventions for code structure. Developers can arrange the layout of their 
                                                                                                      projects as they prefer. There is a suggested architecture that can be easily changed with a few settings.', '2015-05-25 11:45:01'])
  end
end
