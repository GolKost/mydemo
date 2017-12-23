class SimonController < ApplicationController
  def input
    render layout: false
  end

  def view
    fact = 1
    n1 = 1
    n2 = 2
    n3 = 3
    @i = 0
    fi = 1
    @k = 0
    @v1 = params[:v1].to_i
    @result = []
    loop do
      mn = n1 * n2 * n3
      if fact < mn
        loop do
          fi += 1
          fact *= fi
          break if fact >= mn || fi == 22
        end
      end
      if fact == mn
        @result << "#{fi}!= #{n1}*#{n2}*#{n3}"
        @i += 1
      end
      n1 = n2
      n2 = n3
      n3 += 1
      break if @i == @v1 || fi == 22
    end

    respond_to do |format|
      format.html
      format.json do
        render json:
        { type: @result.class.to_s, value: @result }
      end
    end
      end
  end
