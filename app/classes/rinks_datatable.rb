class RinksDatatable
  delegate :params, :h, :link_to, :number_to_currency, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Rink.count,
      iTotalDisplayRecords: 50,
      aaData: data
    }
  end

private

  def data
    rinks.map do |rink|
      [
        link_to(rink.name, rink),
        h(rink.address1),
        h(rink.addresscity),
        h(rink.addressstate),
        h(rink.addresszip),
        h(rink.phone1),
        h(rink.website),
        h(rink.updated_at),
        h('')
      ]
    end
  end

  def rinks
    @rinks ||= fetch_rinks
  end

  def fetch_rinks
    rinks = Rink.order("#{sort_column} #{sort_direction}")
    rinks = rinks.page(page).per_page(per_page)
    if params[:sSearch].present?
      rinks = rinks.where("name like :search", search: "%#{params[:sSearch]}%")
    end
    rinks
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[name address1 addresscity addressstate addresszip phone1 website]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end