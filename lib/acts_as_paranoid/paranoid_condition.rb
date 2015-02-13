module ActsAsParanoid
  class ParanoidCondition < Arel::Nodes::Grouping

    def eql? other
      self.class == other.class &&
        self.expr.to_sql == other.expr.to_sql
    end
    alias :== :eql?

  end
end
