
require_relative 'sections'

class PerfilPage < SitePrism::Page

    section :nav, Navbar , '#navbar'
    #'Navbar' é qualquer nome
    #'#navbar' é o seletor CSS da barra de navegação

    element :formulario, '#user-settings-profile-edit-form'
    element :input_empresa, 'input[name$=company]'
    element :combo_cargo, 'select[name$=job]'
    element :salvar, '#form-submit-button'

    def atualiza(empresa,cargo)
        input_empresa.set empresa
        combo_cargo.find('option',text: cargo).select_option
        salvar.click
    end
end