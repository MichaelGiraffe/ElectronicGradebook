class PagesController < ApplicationController
    def index
        #@meetings = Meeting.all
    end

    def conference
    end

    def add_student
    end

    def create
        @document_type = params[:document_type]

        #тут примерно набросок профессий, потом заменю
        @fio = params[:fio]#фио студента

        #это можно в будущем сделать через хэш
        @code = params[:code]#код 
        @codename = params[:codename]#наименование 


        @profile = params[:profile]#профиль подготовки
        @theme = params[:theme]#тема
        @main_list = params[:main_list]
        @add_list = params[:add_list]
        @grade = params[:grade]
        #@quality = params[:quality]#с отличием или без отличия
        @kind = params[:kind]#тип обучения бакалавриат или мага
        #председатели
        @host = params[:host]
        @GAK1 = params[:GAK1]
        @GAK2 = params[:GAK2]
        @GAK3 = params[:GAK3]
        @secretary = params[:secretary]

        #Научники
        @teacher = params[:teacher]#научник
        @helper = params[:helper]#консультант
        # временное сохранение данных
        session[:document] = {
            document_type: @document_type,
            
            fio: @fio,
            code: @code,
            codename: @codename,
            profile: @profile,
            theme: @theme,
            main_list: @main_list,
            add_list: @add_list,
            grade: @grade,
            kind: @kind,

            host: @host,
            GAK1: @GAK1,
            GAK2: @GAK2,
            GAK3: @GAK3,
            secretary: @secretary,
            teacher: @teacher,
            helper: @helper
        }

        render :conference #открывает предварительный просмотр документа
    end

    def download
        data = session[:document]

        @document_type = data["document_type"]

        @fio = data["fio"]
        @code = data["code"]
        @codename = data["codename"]
        @profile = data["profile"]
        @theme = data["theme"]
        @main_list = data["main_list"]
        @add_list = data["add_list"]
        @grade = data["grade"]
        @kind = data["kind"]


        @host = data["host"]
        @GAK1 = data["GAK1"]
        @GAK2 = data["GAK2"]
        @GAK3 = data["GAK3"]
        @secretary = data["secretary"]

        @teacher = data["teacher"]
        @helper = data["helper"]

        doc = generate_doc

        path = Rails.root.join("public/protection.docx")

        doc.save(path.to_s)

        send_file path,
            filename: "protection.docx",#обновить до 22 июля
            type: "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
    end


    private

    def generate_doc
        doc = Docx::Document.open("public/#{@document_type}.docx")

        #обычные строки
        doc.paragraphs.each do |p|
            p.substitute("{{fio}}", @fio)
            p.substitute("{{code}}", @code)
            p.substitute("{{codename}}", @codename)
            p.substitute("{{profile}}", @profile)
            p.substitute("{{theme}}", @theme)
            p.substitute("{{main_list}}", @main_list)
            p.substitute("{{add_list}}", @add_list)
            p.substitute("{{grade}}", @grade)
            p.substitute("{{kind}}",@kind)

            p.substitute("{{date}}","«#{Time.now.day}» #{Time.now.strftime("%B")} #{Time.now.year} г.")

            p.substitute("{{host}}",@host)
            p.substitute("{{GAK1}}",@GAK1)
            p.substitute("{{GAK2}}",@GAK2)
            p.substitute("{{GAK3}}",@GAK3)
            p.substitute("{{secretary}}",@secretary)

            p.substitute("{{teacher}}", @teacher)
            p.substitute("{{helper}}", @helper)
        end

        # таблицы
        doc.tables.each do |table|
            table.rows.each do |row|
                row.cells.each do |cell|
                    cell.paragraphs.each do |p|
                        p.substitute("{{fio}}", @fio)
                        p.substitute("{{code}}", @code)
                        p.substitute("{{codename}}", @codename)
                        p.substitute("{{profile}}", @profile)
                        p.substitute("{{theme}}", @theme)
                        p.substitute("{{main_list}}", @main_list)
                        p.substitute("{{add_list}}", @add_list)
                        p.substitute("{{grade}}", @grade)
                        p.substitute("{{kind}}",@kind)

                        p.substitute("{{date}}","«#{Time.now.day}» #{Time.now.strftime("%B")} #{Time.now.year} г.")

                        p.substitute("{{host}}",@host)
                        p.substitute("{{GAK1}}",@GAK1)
                        p.substitute("{{GAK2}}",@GAK2)
                        p.substitute("{{GAK3}}",@GAK3)
                        p.substitute("{{secretary}}",@secretary)

                        p.substitute("{{teacher}}", @teacher)
                        p.substitute("{{helper}}", @helper)
                    end
                end
            end
        end

        doc
    end
end