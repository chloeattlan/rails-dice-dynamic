class DiceController < ApplicationController
  def twosix
    vals = (1..6).to_a
    @first = vals.sample
    @second = vals.sample
    render({ :template => "view_layouts/twosix"})
  end
  def twoten
    vals = (1..10).to_a
    @first = vals.sample
    @second = vals.sample
    render({ :template => "view_layouts/twoten"})
  end
  def onetwenty
    vals = (1..20).to_a
    @first = vals.sample
    render({ :template => "view_layouts/onetwenty"})
  end
  def fivefour
    vals = (1..4).to_a
    @first = vals.sample
    @second = vals.sample
    @third = vals.sample
    @fourth = vals.sample
    @fifth = vals.sample
    render({ :template => "view_layouts/fivefour"})
  end
  def random
    @numdie = params[:numdie].to_i
    @maxval = params[:maxval].to_i
    @rolls = Array.new(@numdie) { rand(1..@maxval) }

    render({ :template => "view_layouts/random"})
  end
end
