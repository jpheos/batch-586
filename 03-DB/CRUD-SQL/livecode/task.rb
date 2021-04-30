class Task
    attr_reader :id
    attr_accessor :title, :done, :description

    def initialize(attributes = {})
        @id = attributes[:id]
        @title = attributes[:title]
        @description = attributes[:description]
        @done = attributes[:done] || 0
    end

    def self.find(id)
        sql = <<-SQL
            SELECT * FROM tasks WHERE id = "#{id}"
        SQL
        result = DB.execute(sql).first
        unless result.nil?
            Task.new(title: result["title"],
                description: result["description"],
                done: result["done"], id: result["id"]
            )
        end
    end

    def self.all
        sql = <<-SQL
            SELECT * FROM tasks
        SQL
        results = DB.execute(sql)
        results.map do |row|
            Task.new(title: row["title"],
                description: row["description"],
                done: row["done"], id: row["id"]
            )
        end
    end

    def destroy
        return unless @id
        sql = <<-SQL
        DELETE FROM tasks WHERE id="#{@id}"
        SQL
        DB.execute(sql)
    end

    def save
        is_not_in_database = @id.nil?
        if is_not_in_database
            create_task
        else
            update_task
        end
    end

    private

    def update_task
        sql = <<-SQL
        UPDATE tasks SET
            title = "#{@title}",
            description = "#{@description}",
            done="#{@done}"
        SQL
        DB.execute(sql)
    end

    def create_task
        sql = <<-SQL
        INSERT INTO tasks (title, description, done)
        VALUES ("#{@title}", "#{@description}", "#{@done}")
        SQL
        DB.execute(sql)
        @id = DB.last_insert_row_id
    end
end