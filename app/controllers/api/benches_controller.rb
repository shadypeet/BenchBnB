class Api::BenchesController < ApplicationController

  def index
    @benches = Bench.all
    render json: @benches
  end

  def create
    @bench = Bench.create!(bench_params)
    render :index
  end

  private

  def bench_params
    params.require(:bench).permit(:description, :lat, :lng)
  end

end
