require 'spec_helper'

describe "wp_term_taxonomies/new" do
  before(:each) do
    assign(:wp_term_taxonomy, stub_model(WpTermTaxonomy,
      :term_taxonomy_id => 1,
      :term_id => 1,
      :taxonomy => "MyString",
      :description => "MyText",
      :parent => 1,
      :count => 1
    ).as_new_record)
  end

  it "renders new wp_term_taxonomy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", wp_term_taxonomies_path, "post" do
      assert_select "input#wp_term_taxonomy_term_taxonomy_id[name=?]", "wp_term_taxonomy[term_taxonomy_id]"
      assert_select "input#wp_term_taxonomy_term_id[name=?]", "wp_term_taxonomy[term_id]"
      assert_select "input#wp_term_taxonomy_taxonomy[name=?]", "wp_term_taxonomy[taxonomy]"
      assert_select "textarea#wp_term_taxonomy_description[name=?]", "wp_term_taxonomy[description]"
      assert_select "input#wp_term_taxonomy_parent[name=?]", "wp_term_taxonomy[parent]"
      assert_select "input#wp_term_taxonomy_count[name=?]", "wp_term_taxonomy[count]"
    end
  end
end
