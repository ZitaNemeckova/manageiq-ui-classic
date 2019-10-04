class ApplicationHelper::Button::GenericObjectDefinitionButtonButtonGroupDelete < ApplicationHelper::Button::Basic
  needs :@record

  def data
    {'function'      => 'sendDataWithRx',
                 'function-data' => {
                   :type       => 'delete',
                   :controller => 'toolbarActions',
                   :url        => "show_list",
                   :payload    => {
                     :entity => @record.class.model_name.plural,
                     :redirect_url => "/generic_object_definition/",
                     :name => @record.name,
                     :labels => {single: @record.class.name}
                   }
                 }.to_json}
  end
end
